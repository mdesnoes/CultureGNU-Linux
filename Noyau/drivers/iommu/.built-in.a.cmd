cmd_drivers/iommu/built-in.a := rm -f drivers/iommu/built-in.a; ar cDPrST drivers/iommu/built-in.a drivers/iommu/iommu.o drivers/iommu/iommu-traces.o drivers/iommu/iommu-sysfs.o drivers/iommu/dma-iommu.o drivers/iommu/ioasid.o drivers/iommu/iova.o drivers/iommu/amd/iommu.o drivers/iommu/amd/init.o drivers/iommu/amd/quirks.o drivers/iommu/intel/dmar.o drivers/iommu/intel/iommu.o drivers/iommu/intel/pasid.o drivers/iommu/intel/trace.o