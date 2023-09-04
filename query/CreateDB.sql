
CREATE SCHEMA machine_learning;

CREATE TABLE machine_learning.performance_metrics (
    model_id int,
    train_id int,
    epoch int,
    loss float,
    accuracy float,
    train_loss float
);