cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2897"
  sha256 arm:   "9029a5a682ede01df7fa0e9dee974c95393fcab20a404bf50bbcb077a59793ef",
         intel: "fe7510677762ee313e5e5a7f27c2ac81140a3eef7c12b9da4ff326e86f1ff579"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
