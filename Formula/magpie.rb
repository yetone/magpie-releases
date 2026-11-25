class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4788/magpie-cli-darwin-arm64"
      sha256 "5c43a56195527d4798d05ef705328c73ee8201d6cb09e8106fc486f058fded9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4788/magpie-cli-darwin-amd64"
      sha256 "06faaaa1e99d174c55ea1b93b63ad8bd69e928dcf3beb0b25bda675e71b87bf5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4788/magpie-cli-linux-arm64"
      sha256 "3378bafa2070506b21ffe0cf35cb8d3ec8a052ac842b44155e809f2062e49f3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4788/magpie-cli-linux-amd64"
      sha256 "45b6a17c866ca3eceb067c86c69f456c4558a66344612f9c44b2f038b39e0c52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
