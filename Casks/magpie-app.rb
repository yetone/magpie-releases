cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2988"
  sha256 arm:   "8320ae85f390bfc81a3f4789812604949e1af963743f6b548db377fa46fe5103",
         intel: "0fecc6ea4cbfcb6a30c5ed097e7ecf51632c897b053e6869d094250fc733fec2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
