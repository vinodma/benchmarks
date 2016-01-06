#Use @elapsed fit_pca(300,300,2) to profile this function at the julia REPL

function fit_pca(m,n,k)
       	# matrix to encode
       	A = randn(m,k)*randn(k,n)
       	loss = QuadLoss()
       	r = ZeroReg()
       	glrm = GLRM(A,loss,r,r,k)
       	X,Y,ch = fit!(glrm)
       	println("Convergence history:",ch.objective)
       	return A,X,Y,ch
       end
