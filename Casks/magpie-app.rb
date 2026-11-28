cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4988"
  sha256 arm:   "11e62d367315eeb502aa1ce36b6461498e76aef030c1077354965a5a00ba50d0",
         intel: "469c6e3b9530c2525927ce0356eb443ff665a873fd14e0f40c2011d093785669"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
