function NeuralNetworkModal()
  load('ex3data1.mat');
  m=size(X,1);
  input_node=400;
  hidden_node=25;
  num_labels=10;
  load('ex3weights.mat');
  rp = randperm(m);

for i = 1:m
    % Display 
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp(i), :));

    pred = predict(Theta1, Theta2, X(rp(i),:));
    fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));
    end
endfunction
