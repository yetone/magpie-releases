cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3436"
  sha256 arm:   "fe56c6eceef5a16c6f141d9ba8f21e07265cae478a4d5d7683ebbbf6024e7823",
         intel: "b71098fb4378f4bc3caed9da0c172c3661c9e0edfb5aeb81cb2946a01df5e5e2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
