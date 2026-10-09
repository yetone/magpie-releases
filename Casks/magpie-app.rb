cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1129"
  sha256 arm:   "161c9a1523f0ac93950bd24a1cfac0dcf7145f21fa8d1307fa6a6851fdbe07a2",
         intel: "10509f1687b8d27fb1d2706aaa947a6e934a51e09896e48dbb10dd925b14c661"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
