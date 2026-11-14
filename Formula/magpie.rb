class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4140/magpie-cli-darwin-arm64"
      sha256 "6f9ccf5f8522718b52f6362d5dd1fb2a80fe20f731177665da3db98a414862e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4140/magpie-cli-darwin-amd64"
      sha256 "642147fd57c1adf4fde139c4136a02f54f718a26ca1ffee9db938ba168869019"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4140/magpie-cli-linux-arm64"
      sha256 "a6d98fd96a4a2ae88dad12702315a11f364ccf81ab68be334476d56522d59e70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4140/magpie-cli-linux-amd64"
      sha256 "6f8472f3392d69de3c500fd4492c9a65533e1bb01d43b962fe54ff8ee90e0aec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
