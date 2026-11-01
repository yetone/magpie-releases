class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2544/magpie-cli-darwin-arm64"
      sha256 "f2ec3888153fb7484297eabe0831aed05959fb8c47c83de3d1b4107dd48fc346"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2544/magpie-cli-darwin-amd64"
      sha256 "1fa9a908cbab8d70f735357905664a3eb83875852dff6be7f4745ea13c7fa7d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2544/magpie-cli-linux-arm64"
      sha256 "83d342b5e1587ab30bebab3657c852bbe3d8eb1b278af3820d2de4a4acf98fb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2544/magpie-cli-linux-amd64"
      sha256 "9ee9733a1e3216727f97e94837e1429c52fe1cb76dadf4170b9b3b827d49b262"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
