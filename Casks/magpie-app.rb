cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.952"
  sha256 arm:   "be60371aec2b294ca0e275ee4a3528e1b89fe13707f29a44c1c9270d06060582",
         intel: "b373003a77f2f3fba4fab6feca6c8a74b1a0517635495789087588429f9da965"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
