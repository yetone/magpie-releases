class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1098/magpie-cli-darwin-arm64"
      sha256 "fc2b81e9011531367ec35bb9db9d493cbf4272c707b5d3151683012b97391130"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1098/magpie-cli-darwin-amd64"
      sha256 "2df820535d61b985d2e043d1769ae4c800316db45dedc628da1130e92f6e0560"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1098/magpie-cli-linux-arm64"
      sha256 "f53897171774eae832758a5327470e275e46156a8ed2e8b071e1c9ba49a79a4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1098/magpie-cli-linux-amd64"
      sha256 "904e1bffd64104f5a33780c3276ff484ce14f4d47cb6e943e8fe822c86944b86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
