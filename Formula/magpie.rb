class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3625/magpie-cli-darwin-arm64"
      sha256 "3fbe648d7f042b7cc1123322405b1472023e42acf6f21069f34fa084ac001daa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3625/magpie-cli-darwin-amd64"
      sha256 "70abc0531d7be48cebb5f856a7ae4fec31e3c4f5395ffaf197300f439bfec3e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3625/magpie-cli-linux-arm64"
      sha256 "951c029b5e24b9b3c4877067530b86ca4caa71ec8714ab0d05ee4d11c6fe574b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3625/magpie-cli-linux-amd64"
      sha256 "606d7ff70171361a67fd5d63ef321a58f43c871d760c755d50a138ab3d1f9117"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
