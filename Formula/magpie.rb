class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3852/magpie-cli-darwin-arm64"
      sha256 "5cb214f82734d744df2498dd5971e72f6fad0b8999b6144ffbdf3c4dd05c1a28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3852/magpie-cli-darwin-amd64"
      sha256 "741ad1cb33c5b0fc31c711e04c552b6497797592477a5ead5690407318f537db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3852/magpie-cli-linux-arm64"
      sha256 "4b0c5bc5b7524fbd9d0fd630443f7de78caad5a75800d4b8cdfa3abb1099eb05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3852/magpie-cli-linux-amd64"
      sha256 "ad784ffd8223fa7ef1c4558ac75aa4490c1629f8528c042d496ffa091380ee87"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
