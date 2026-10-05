class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1040/magpie-cli-darwin-arm64"
      sha256 "9132c92a0db245cf507c22df20595ceca7e7a964e2f57194e4bcba4504458fa0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1040/magpie-cli-darwin-amd64"
      sha256 "79ee16e02913f7e952af5eda1d91d370af63906687cdb08c62fea9c36f4637f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1040/magpie-cli-linux-arm64"
      sha256 "43181b7daa0f0bd79286fc1ce2ba1d913a2dee7d0b699c55c0362a1258e4e5a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1040/magpie-cli-linux-amd64"
      sha256 "929bc47546400906f9745162ab05a6089ae11cf5779aa06fa22d21478f1de6b5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
