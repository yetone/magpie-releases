class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2020/magpie-cli-darwin-arm64"
      sha256 "663287c6473c1e874f21d8d07f3dec2c55c158a70daf0e80a4ca3ba0e0521ea5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2020/magpie-cli-darwin-amd64"
      sha256 "ba3a099ae73379a1cd5225b34dbb4eb73671f6f9640c658d2196c8264f94d348"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2020/magpie-cli-linux-arm64"
      sha256 "92da15f827e58a3471a28a142eff37b619b90f251729b45597da26c1b9a1e128"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2020/magpie-cli-linux-amd64"
      sha256 "0f82626fdd100c483d9cb73a698985bda8aa2abe44432fa07516d9d27d6a7256"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
