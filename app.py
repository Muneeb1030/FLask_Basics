from flask import Flask , render_template, request, redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime, timezone

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///test.db'
db = SQLAlchemy(app)

class Todo(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    content = db.Column(db.String(200), nullable=False)
    date = db.Column(db.DateTime,default=datetime.now(timezone.utc))

    def __repr__(self) -> str:
        return f'<Task {self.id}>'


@app.route('/',methods=['POST','GET'])
def index():
    if request.method == 'POST':
        task_content = request.form['content']
        new_task = Todo(content=task_content)
        try:
            db.session.add(new_task)
            db.session.commit()
            return redirect('/')
        except:
            return "There is an Error While Adding Your Task"

    else:
        tasks = Todo.query.order_by(Todo.date).all()
        return  render_template('index.html', tasks=tasks)
    
@app.route('/delete/<int:id>')
def delete(id):
    task = Todo.query.get_or_404(id)

    try:
        db.session.delete(task)
        db.session.commit()
        return redirect('/')
    except:
        return "There is an error"
    

@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update(id):
    task = Todo.query.get_or_404(id)
    if request.method == "POST":
        task.content =  request.form['content']
        print(task.content)
        try:
            db.session.commit()
            return redirect('/')
        except:
           return "There is an error" 
    else:
        print(task.content)
        return render_template('update.html', task=task)
    


if __name__ == '__main__':
    app.run(debug=True)