class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3407/magpie-cli-darwin-arm64"
      sha256 "caf061feeb975b67066d0fa3fcd095cf850180c80c14787b69cc8d3c19c25716"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3407/magpie-cli-darwin-amd64"
      sha256 "1c29a00933333fdb65b6c4ca15d286c042ec79d7a861dae049635ffcc51ae2a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3407/magpie-cli-linux-arm64"
      sha256 "be5f7e791fd4293851469eaedd91661c883dd830fdf7c65b2861495f90b4fb92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3407/magpie-cli-linux-amd64"
      sha256 "b0fd4fa54072576f57314fc71eb11621c94c2b7c249a83852f77668b9dc5d3eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
