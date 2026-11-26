class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4871/magpie-cli-darwin-arm64"
      sha256 "5591c13893818376d4c3d6dc64227c1da522a9974abde156da51170b28072eb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4871/magpie-cli-darwin-amd64"
      sha256 "20d7b160d0630778f0f117bf64de5ac6cd9775573f102e91cd1ebc04d0e738ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4871/magpie-cli-linux-arm64"
      sha256 "90daae4e0b56d4292496efeb1b955137f11286892293835faf11061c9b6d6d8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4871/magpie-cli-linux-amd64"
      sha256 "687eb9b1ab0cdef9f0b2b43c6665393b2ded7e259969ea64457588ead371a253"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
