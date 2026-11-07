class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3247/magpie-cli-darwin-arm64"
      sha256 "0a677d46bd22dab186ba9bd1c9209d951c5bfa8c826c74df2b12ce62a2277b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3247/magpie-cli-darwin-amd64"
      sha256 "51f89755229c8b8d7106fe00a8bcf6f7ea51805925c206236999478dedae6bb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3247/magpie-cli-linux-arm64"
      sha256 "5ff22d14ae5cd1de88fc6e6b88aa81186969d91954a1c73f62e9fc138e2e361c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3247/magpie-cli-linux-amd64"
      sha256 "80496a2cd21341803a1c7bfc4ffe8259aa4114847f49daf0ad43741c63459e96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
