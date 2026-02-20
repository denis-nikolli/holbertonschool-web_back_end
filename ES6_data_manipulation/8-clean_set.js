export default function cleanSet(set, startString) {
  const arr = [];
  if (typeof startString === 'undefined' || startString === '' || typeof startString !== 'string') {
    return '';
  }
  set.forEach((element) => {
    if (typeof element === 'string' && element.startsWith(startString)) {
      const cleaned = element.slice(startString.length);
      if (cleaned) {
        arr.push(cleaned);
      }
    }
  });
  return arr.join('-');
}
