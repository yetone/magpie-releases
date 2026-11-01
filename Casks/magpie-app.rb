cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2634"
  sha256 arm:   "2522867bd6d78e1bc94e64fdabca076b2743d596a8111a150b84abd7ee00b805",
         intel: "bbebdad886ce9adbe1ed08f68c22100972bf39769e6651530d4a17fcaa24e89e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
