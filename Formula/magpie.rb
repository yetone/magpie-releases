class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2718/magpie-cli-darwin-arm64"
      sha256 "c7214222b90a9d2fc1dfbac231d3ff41df1bed49ad777b72bcd72adcf1626959"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2718/magpie-cli-darwin-amd64"
      sha256 "b3d3528a68fa8b80fa2c052467b269a246d1495f53d33cd74ebceb0643bba329"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2718/magpie-cli-linux-arm64"
      sha256 "d2b56ec1f7f94679887bae3e6266768ffae6156eeb2a065f248b3ccfc4b9f32d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2718/magpie-cli-linux-amd64"
      sha256 "2e5a6fcf2df195c533ef775ec9f90ba82804a800eac0ea1dc57b99c770656e1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
