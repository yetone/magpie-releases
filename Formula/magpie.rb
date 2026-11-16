class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4322/magpie-cli-darwin-arm64"
      sha256 "ddde2c947267ade1a7cd1e831360c5d717e6025345066b13b24b1604b317d03f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4322/magpie-cli-darwin-amd64"
      sha256 "2e1ef97323deb548a15535d8cc8378ba17f5d55dc3dfde3ce0fd0e43f450b188"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4322/magpie-cli-linux-arm64"
      sha256 "4b292f726699cb7dc158e83e1018ddcca3f6b5b7b8ac99298458aa42faa06613"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4322/magpie-cli-linux-amd64"
      sha256 "8ee61760d8ed26c684e18b4ece718178a22174d477ae80dcb7eedeb381158680"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
