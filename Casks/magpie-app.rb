cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.982"
  sha256 arm:   "139b9281d031e43b7069ca6865e5f35858b6fe3171c282fa328d1342873c13cb",
         intel: "b2064bc9c76e96a2ee491ede72c249dcc4f1bee0071f205cf8956ef1a38da8a2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
