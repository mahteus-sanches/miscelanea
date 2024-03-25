import skimage as ski
print(ski.__version__)
camera = ski.data.camera()
print(camera.shape)
print(camera.size)
print(camera.min())
print(camera.max())
print(camera.mean())
print(camera[10,0])
camera[10,0] = 0
print(camera[10,0])