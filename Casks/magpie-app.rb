cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3323"
  sha256 arm:   "3d916eb1342cd49dfbf89d0dba37700121259d51f1dfb8969a5dbff602ee152d",
         intel: "b6e48e8dbe0c3e66452281603e4f39852e61a9611e029dd0925589143b4bce0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
