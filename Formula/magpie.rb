class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1942/magpie-cli-darwin-arm64"
      sha256 "eba32cd9d6f91715c1ba01517c4bbd9296450508534ae0809ff73a92ff6c0028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1942/magpie-cli-darwin-amd64"
      sha256 "eac62ed98d165eb89101eba56842bb83bfea731d49bb5bdbd586fc6fc945c626"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1942/magpie-cli-linux-arm64"
      sha256 "2210efe1e5a54154fc155132ff7588d2c8831475ba5c06c052020cd714411c7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1942/magpie-cli-linux-amd64"
      sha256 "3bbba6530cfbe9d6b12ab08315eca6441616b958e5950b609bd3a4db4dc3fbe9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
