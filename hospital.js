class Patient {
	constructor(data) {
		this.data = data;
		this.next = null;
	}
}

class Queue {
	constructor(head = null) {
		this.head = head;
		this.tail = head;
	}

	isEmpty() {
		return this.head === null;
	}

	enQueue(node) {
		if(this.isEmpty()) {
			this.head = node;
			this.tail= node;
		}else if(this.head.next === null) {
			this.tail = node;
			this.head.next = this.tail;
		}else if(this.head.next != null) {
			this.tail.next = node;
			this.tail = this.tail.next;
		}
		return null;
	}
	unQueue() {
		if(this.isEmpty()){
			return null;
		} else if(this.head.next === null) {
			let temp= this.head;
			this.head = null;
			this.tail = null;
			return temp;
		} else if(this.head.next != null) {
			let temp = this.head;
			this.head = this.head.next;
			return temp;
		}
	}
}

var redQ = new Queue;
var yellowQ = new Queue;
var greenQ = new Queue;

const addPatient = (turn, color) => {
	color = color.toLowerCase();
	switch(color) {
		case 'red':
			redQ.enQueue(new Patient(turn));
			break;
		case 'yellow':
			yellowQ.enQueue(new Patient(turn));
			break;
		case 'green':
			greenQ.enQueue(new Patient(turn));
			break;
		default:
			return 'Patient could not be added';
	}
}

const getNextPatient = () => {
	if (!redQ.isEmpty()) {
		console.log(redQ.head.data);
		return redQ.unQueue();
	}else if(!yellowQ.isEmpty()) {
		console.log(yellowQ.head.data);
		return yellowQ.unQueue();
	}else if(!greenQ.isEmpty()) {
		console.log(greenQ.head.data);
		return greenQ.unQueue();
	}
	return console.log('There are no more patients');
}

addPatient(1, 'red');
addPatient(4, 'red');
addPatient(5, 'red');
addPatient(2, 'yellow');
addPatient(3, 'green');

console.log(greenQ);
console.log(yellowQ);
console.log(redQ);

getNextPatient();
getNextPatient();
getNextPatient();
getNextPatient();
getNextPatient();
getNextPatient();

console.log(redQ);
console.log(yellowQ);
console.log(greenQ);
