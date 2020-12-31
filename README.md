# Texture-Detection-using-Chan-Vese-ActiveContours
 A popular method to represent a textured region is via the use of what is known as a structure
tensor descriptor. Given an image, I(x, y), the structure tensor at each pixel is a (2, 2) matrix formed
by, W(x, y) ∗ ∇I(x, y)∇I(x, y)
t
, where W(x, y) is a known Kernel for e.g., a Gaussian Kernel. The
structure tensor captures neighborhood information at each pxiel for instance, the dominant directional
characteristics within the neighborhood. Once you have comuted the structure tensor at each pixel,
you then have a tensor field. Our goal then is to segment this tensor field using the Chan-Vesse active
contour model given by the following variational principle.
E(C, T1, T2) = Z
R
d
2
(T(x), T1)dx +
Z
Rc
d
2
(T(x), T2)dx + α|C| (1)
Where the curve C is the boundary of the desired unknown segmentation, R is the region enclosed
by C and Rc
is the region outside C, T1 and T2 are the mean values of the tensor field in region R
and Rc
respectively, |C| is the arclength of the curve C, α is a regularization parameter, d(., .) is the
measure of distance between two structure tensors. The minimizer of the above variational principle is
obtained using standard EL-equations. The corresponding active contour flow equation is given by,
∂C
∂t = −

αk − d
2
(T, T1(t)) + d
2
(T, T2(t))
N
where T1 = M(T, R), T2 = M(T, Rc
) (2)
The curve evolution equation (2) can be easily implemented in a level set framework. The corresponding
level set formulation is given by:
∂φ
∂t =

α∇ · ∇φ
|∇φ|
− d
2
(T, T1) + d
2
(T, T2)

|∇φ| (3)
The above model can be viewed as a modification of the active contour model without edges for scalar
valued images by Chan and Vese described in class. For this assignment, you will develop code for
the level-set form given above for two distance functions d(,) used in the level-set form above. (i) The
Euclidean distance between the vectorized forms of the structure tensor matrices, which is the same as
the Forbenius norm of the difference between the matrices. (ii) The Log-Euclidean distance between
two structure tensors A and B defined as || log(A) − log(B)||F , where, log is the matrix log. Note that
this can be computed by taking the eigen decomposition of a matrix and then simply applying the log
to the diagonal matrix of eigen-values.
