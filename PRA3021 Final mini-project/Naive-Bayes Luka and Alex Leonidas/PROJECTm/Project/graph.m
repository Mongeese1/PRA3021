parameters = fit(X, y, theta);
x_values = [np.min(X(:, 1) - 5), np.max(X(:, 2) + 5)];
y_values = - (parameters(0) + np.dot(parameters(1), x_values)) / parameters(2)
plot(x_values, y_values)
hold on
 title=('Decision Boundary');
legend ({Decision Boundary, Admitted, Not Admitted}, 'Location', 'Southwest')
xlabel('Marks in 1st Exam')
ylabel('Marks in 2nd Exam')