class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3144/magpie-cli-darwin-arm64"
      sha256 "ea521cdd7f5d000b78e1224f7397948fc6af311c92f18bd09dc6038ed8bc4085"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3144/magpie-cli-darwin-amd64"
      sha256 "8f9cdf9aeea8b15ffe0f7457f8a17366a9d2003d45ea058a1ae5226fe5cbcac9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3144/magpie-cli-linux-arm64"
      sha256 "00f5abd11a6db32300af2da3541bca57c71b3f0fe694250882ce39690cd935cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3144/magpie-cli-linux-amd64"
      sha256 "0cbd108ab7f42bc5b773937e646ade1acc831eadaf86ccd6badb4f639c60f192"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
