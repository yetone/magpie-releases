cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.890"
  sha256 arm:   "75f371f3ff95f0d90915117f4e7f313cf1f06dd37930e6cc3d1eda047e6f0b95",
         intel: "1714664e6cb989963bc964fa83e8ea13481023333bbaab9297084ede1c6417aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
