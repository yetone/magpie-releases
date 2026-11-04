class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2988/magpie-cli-darwin-arm64"
      sha256 "dc13e52bada6e2a1955017af623b98810389ae5a62e4ca2e52529434c0138bcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2988/magpie-cli-darwin-amd64"
      sha256 "9d5deccae1028c8ed06d8db1db77ba352fd5143eee493130b3a5a9fec34b1650"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2988/magpie-cli-linux-arm64"
      sha256 "774498749557fa132902a016319075ba59467b6f997c8743edfeb9d43c2b42e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2988/magpie-cli-linux-amd64"
      sha256 "8eed1f038e4c096088d2f5358c29bfca2b0b863c883aaf181cf534b9e0b0de43"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
