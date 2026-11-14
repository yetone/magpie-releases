class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4204/magpie-cli-darwin-arm64"
      sha256 "0e589107291923069a735c9b35cba87e94ad46bb1b5a396cf0f591dbe9696435"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4204/magpie-cli-darwin-amd64"
      sha256 "0e799e35b7a036c7687c871d845ec886cebe365b0b9fd8f1b8c797ad2f8a26bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4204/magpie-cli-linux-arm64"
      sha256 "96ebda2532e7b04c4fe6032bc773e78f62795b697a7af7ff6668c5edcbf690e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4204/magpie-cli-linux-amd64"
      sha256 "2eec73920f05b8898cd9840e95b62328f1fabf9515145c109429e58f3136bf56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
