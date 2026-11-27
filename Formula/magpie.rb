class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4922/magpie-cli-darwin-arm64"
      sha256 "f84a273a579cec4c2913e9c84d8bc9aaf41230a04b1802c809e2b1787c2bfb81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4922/magpie-cli-darwin-amd64"
      sha256 "70de87f08d9d12c66895ad1909501e6e997e87a02bff171fbef39a19455e98ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4922/magpie-cli-linux-arm64"
      sha256 "bdbb38f8e92b34cc415b480202f67e5977488edeab8859953e5d82cf78d98f93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4922/magpie-cli-linux-amd64"
      sha256 "085a13cb04897d75b3c19d5ab2dfbc9c0ba506533adc0a4c350e8761cdc5065c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
