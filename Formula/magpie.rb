class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.939/magpie-cli-darwin-arm64"
      sha256 "3fba450980ed7c43ca08740949da5dd7544a167f43e11cf261b966c311a70b9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.939/magpie-cli-darwin-amd64"
      sha256 "a7db11ca6008ddc42480a76820ff8ea72db98f351ef0e75deecd3da2e2e1cf3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.939/magpie-cli-linux-arm64"
      sha256 "151648c2205d2fcb829b845f0af25a84801fc7c49f91b9e7a3f0dd918a57ae71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.939/magpie-cli-linux-amd64"
      sha256 "93d98c78f819d730527203a467defd7be79882c10872782afc39b437c3703cc8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
