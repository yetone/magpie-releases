class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3166/magpie-cli-darwin-arm64"
      sha256 "22ff9db31ea7260d7edc48b89f949362fe0783a2833a1d93c42c6b1d7e9d9244"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3166/magpie-cli-darwin-amd64"
      sha256 "b685bb54c7e63691748a73212e8cc55dd156c18ec610d743da14bc4ebed79c95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3166/magpie-cli-linux-arm64"
      sha256 "61456881ba9ab30f01c183bc033da82695e89eda6d472e4256a1f9e4c93f2eb5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3166/magpie-cli-linux-amd64"
      sha256 "2324699a987406ec392260809232ef6781263b8e4ab906dd3b8241bd6a1fa9cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
