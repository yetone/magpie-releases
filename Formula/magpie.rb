class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4737/magpie-cli-darwin-arm64"
      sha256 "d47e40b13d9256eea2bf6d707caf11702cd6cce934ae87097ae82c99846dd71e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4737/magpie-cli-darwin-amd64"
      sha256 "53b49d77c80911f22849c17a79b67bcae53141bbe7117072225c1d431be4682b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4737/magpie-cli-linux-arm64"
      sha256 "372366ffa30a62086e3a8962447eecf986c29bd1970db93ae4b262bbae2bbd05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4737/magpie-cli-linux-amd64"
      sha256 "e5c96c1328ba44ccccf29e4652c7ec3294de5db2688f4e8545d9f4a13220ad0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
