const avg = (items) => {
	const values = [50, 80, 95, 40, 100, 90, 90, 90, 100, 85];
	items = values.length < items ? values.length : items;
	let sum = null;
	for(let i = 0; i < items; i ++) {
		sum += values[i];
	}
	return (sum/items);
};

console.log(avg(5));
console.log(avg(2));
