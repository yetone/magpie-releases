class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.141/magpie-cli-darwin-arm64"
      sha256 "32a44f40888b5f09e5371e75b84f6b9998989c0f9a63e734a862130a515a63d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.141/magpie-cli-darwin-amd64"
      sha256 "914759e68214e83b6f0d49de88709b26c1ae08ba66b9aef76c52290018925aa3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.141/magpie-cli-linux-arm64"
      sha256 "d657ea61776fac3973408e094a72dcc06a5dc9b40e339c4b9699b31090f7303c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.141/magpie-cli-linux-amd64"
      sha256 "175e888e831f7276279c5bc5908ce27604c4b24c63f74a79f4f9708128ec0463"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
