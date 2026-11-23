class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4724/magpie-cli-darwin-arm64"
      sha256 "7f5a918f5164b10a98c548c02742434d414d04da4f71a85572052dd85186d900"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4724/magpie-cli-darwin-amd64"
      sha256 "50316a76743f811620b58594d459d6794cecf876529e2e88943b58d16fd3eac8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4724/magpie-cli-linux-arm64"
      sha256 "64c457e9df3e2e8577fb427595ad800af930022f468f260db186969f39e6d0b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4724/magpie-cli-linux-amd64"
      sha256 "4ecfcf7328c104fa6be25c767a00188004939f0e988d679272e85417e8f13d89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
