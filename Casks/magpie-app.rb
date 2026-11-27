cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4967"
  sha256 arm:   "a68f6625192c54db22d4a8f0e5e218084c4b82297d3196ce095a8bec47ba5a09",
         intel: "437556bba7b4b107b2798af1560ea5f60ad89985348a78dbbc0fef30e730e463"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
