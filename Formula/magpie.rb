class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2608/magpie-cli-darwin-arm64"
      sha256 "156e2ca0a2b9ac99dfe13d669a92dc2fca17eb9a427e3cd70a823f6080edb5e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2608/magpie-cli-darwin-amd64"
      sha256 "a54072b469592aca2fb0d8b0497d6a02d32dd84799aa95198324e86febefd4c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2608/magpie-cli-linux-arm64"
      sha256 "b584321bf4e3f9bad85dddf419296b790bc2442d2a65a5702658af411db5a8b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2608/magpie-cli-linux-amd64"
      sha256 "07a5e664a6e87c059c88bd175f3074da6bee2549803f6837a724182754b19318"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
