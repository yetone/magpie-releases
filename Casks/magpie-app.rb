cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2477"
  sha256 arm:   "130a92c5d439f59ba9aa420a0c18ffb49e984b17b542476bfd57c90d15b2e4ea",
         intel: "e94d58267ce86aa0357894636417d9fea1803474d4bd20fae0f247da7944b9b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
