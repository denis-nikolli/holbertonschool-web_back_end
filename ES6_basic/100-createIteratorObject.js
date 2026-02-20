export default function createIteratorObject(report) {
  return {
    *[Symbol.iterator]() {
      const employees = report.allEmployees;
      for (const department of Object.keys(employees)) {
        yield* employees[department];
      }
    },
  };
}
