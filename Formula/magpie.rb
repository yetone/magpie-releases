class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1833/magpie-cli-darwin-arm64"
      sha256 "356e635975282bf31f376200b3beea5d7773e0f1ab90b34eda5827c82fcfa12a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1833/magpie-cli-darwin-amd64"
      sha256 "eeabd85398869dad41e3aacad3c29c25155f8aedf002faf258a7d0ef6a5cea7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1833/magpie-cli-linux-arm64"
      sha256 "fd71c9134e8a633595d34b1481cab64bff01392e810544481bef4062f0b5eee4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1833/magpie-cli-linux-amd64"
      sha256 "65aeaca5b96a4f36b0000a2f8e6e63fc622ccc3a7403e65175558437dbde9449"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
