class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2553/magpie-cli-darwin-arm64"
      sha256 "222b9d9c8f39f4ea942c73fb99054fc5a1fcbbc7d5da75d3a8b53b60b4d3ce8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2553/magpie-cli-darwin-amd64"
      sha256 "c56a3a6235277523e8000697c24baa902d211ad56a4d786ab7faffabcca40301"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2553/magpie-cli-linux-arm64"
      sha256 "a897a18e8ea0b4872203a0d01b48095c4e9b15a0538e4001fad9bac252923cf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2553/magpie-cli-linux-amd64"
      sha256 "d4bab8d707347117c75b8fc098d9652155cf52572e3c262d8adbd157cbb09050"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
