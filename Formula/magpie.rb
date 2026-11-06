class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3099/magpie-cli-darwin-arm64"
      sha256 "df071be470c739304663933a81493665c57b865b87516ad3ecc76a1869b6923d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3099/magpie-cli-darwin-amd64"
      sha256 "d8ea1b7e8c49ff34940d10ee935380f8be505ccebbaa74635f067af3ae615632"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3099/magpie-cli-linux-arm64"
      sha256 "66898dae1c90ea0046bf309e898a97074c0ebc76353482b1fa325595e9a8d071"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3099/magpie-cli-linux-amd64"
      sha256 "8c6707dfd8bcc8fe187f68349c326f25af8df03608e560b6c081902da1f10d32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
