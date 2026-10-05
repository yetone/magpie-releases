cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1072"
  sha256 arm:   "bf771be7266a50965c4141e75fbc415aab2933d156d3684f6cff1f9d1296465f",
         intel: "3657cbd68c5ebf065e45ad10f07492c1e92e7f7134163d3d9e69f78fcb626318"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
