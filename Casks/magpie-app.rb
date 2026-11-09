cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3395"
  sha256 arm:   "3f0253c91323af59e30b54d5e0ff02fabe28d263f59ca0c96eb9f38188d2dbc9",
         intel: "75f6f9a92676372f0027d719386d7819cd34c41635893523caa8100cb9f273df"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
