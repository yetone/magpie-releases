class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5047/magpie-cli-darwin-arm64"
      sha256 "56d648fa816e23c6aafeb00594e95bf9e4b181e0a3eca31f34f74a325bd38ea0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5047/magpie-cli-darwin-amd64"
      sha256 "e6e192ef4a2b3ea699624c45c607de10160bffc426264dd2e4d2928670444416"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5047/magpie-cli-linux-arm64"
      sha256 "3aa566ef1506c33c10819c72ddc34587657586bd350227e483ce1182e4f1d66b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5047/magpie-cli-linux-amd64"
      sha256 "cd239bd192dee73d6999a1ab087aca9b25d4aa3b4154f88a54507530d7aca075"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
