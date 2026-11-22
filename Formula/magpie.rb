class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4663/magpie-cli-darwin-arm64"
      sha256 "0041c0677bb0556f2a8adf3886ecac4ce29cc4b0591b4de02827fa50fd8661f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4663/magpie-cli-darwin-amd64"
      sha256 "7faad8d0f57f8109d058c687f482518f2995a6f9528546fb2965d8e1cc4fa21a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4663/magpie-cli-linux-arm64"
      sha256 "77b87148d45c65824a520248c1392fe23f0a66bab59a3aece365d83aa5f4535e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4663/magpie-cli-linux-amd64"
      sha256 "537aab53d9e5a8ba818b8955e3b087173f0be2707508068458c149d09f30d447"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
