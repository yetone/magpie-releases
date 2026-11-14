cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4147"
  sha256 arm:   "a227787cf77f375aded28c4657929e88281feeda40767919a9246263c3f5512a",
         intel: "35bc1f0160f6ba706d8e7a952eafc63abb1e5c2954622c6f2f7e464ccfd4869a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
