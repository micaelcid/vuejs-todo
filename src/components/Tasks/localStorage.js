const createTask = (task) => {
  let tasks = [];
  tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  tasks.push(task);
  localStorage.setItem('tasks', JSON.stringify(tasks));
};

const getTasks = () => {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  console.log(tasks);
  return tasks;
};

const deleteTask = (id) => {
  const tasks = JSON.parse(localStorage.getItem('tasks')) || [];
  const taskIndex = tasks.findIndex(task => task.id === id);
  tasks.splice(taskIndex, 1);
  localStorage.setItem('tasks', JSON.stringify(tasks));
};


export default { createTask, getTasks, deleteTask };
