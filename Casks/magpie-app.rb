cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.150"
  sha256 arm:   "e68fb03b255068f8ab2aeb83b3a102c03907cbc67a985d4a1e0c40777d572901",
         intel: "fe90207ac4495be38aa57891b52c2be2dd55c870e94142c9876165cceddd681c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
