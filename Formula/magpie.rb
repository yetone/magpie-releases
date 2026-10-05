class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.950/magpie-cli-darwin-arm64"
      sha256 "c1889e1327fe79bccc6881774e97758349a3faa8646f27dc71d118bf1fd2cf88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.950/magpie-cli-darwin-amd64"
      sha256 "7bf8484fde38fdb1a5aa0995ced93cb87a913bbf2bf1d4b550ac3f7d11a78fb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.950/magpie-cli-linux-arm64"
      sha256 "458ec220552763ced9ecaf8d289576a50eae335f61cacd51f2f965db09c4db07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.950/magpie-cli-linux-amd64"
      sha256 "ec08987554a290415d8f82aa49f5956fae3cb8fe045d19874d96bfb1ee7ddae2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
