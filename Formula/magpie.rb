class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4556/magpie-cli-darwin-arm64"
      sha256 "0d5a9eb69eb294e13209679bb069aa5a819a6226ff6cf43e811d6616f87602ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4556/magpie-cli-darwin-amd64"
      sha256 "1f3c6efa544bc51ccc60bce377df1a9af2fcfd2aa5d9cfa900423f7d815bddab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4556/magpie-cli-linux-arm64"
      sha256 "75dd39401f83ccc44db15f57db0e1b37b3137d40d3f38898dec0981853a4ed25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4556/magpie-cli-linux-amd64"
      sha256 "aab1e320b730d53468dbca31ef9784cbd4c0361935f3e816f98e284a698c9fa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
